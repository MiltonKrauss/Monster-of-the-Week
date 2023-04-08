package com.techelevator.dao;

import com.techelevator.model.Character;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcCharacterDao implements CharacterDao{

    private JdbcTemplate jdbcTemplate;

    public JdbcCharacterDao (JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate =  jdbcTemplate;
    }
    //TODO character table needs a monster foreign key

    @Override
    public List<Character> getAllCharacters() {
        List<Character> characters = new ArrayList<>();
        String sql = "SELECT character.id, character.name, character.race, character.description, character.char_class, " +
                "character.strength, character.dexterity, character.constitution, character.intelligence, character.wisdom, " +
                "character.charisma, character.monster_id, character.user_id FROM character";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()){
            characters.add(mapRowToCharacter(results));
        }

        return characters;
    }

    @Override
    public Character getCharacterById(int id) {
        return null;
    }

    @Override
    public Character createCharacter(Character character) {
        String sql = "INSERT INTO character (name, race, description, char_class, strength, dexterity," +
                " constitution, intelligence, wisdom," +
                " charisma, monster_id, user_id) Values (?,?,?,?,?,?,?,?,?,?,?,?) RETURNING id;";

        Integer id = jdbcTemplate.queryForObject(sql, Integer.class, character.getName(), character.getRace(), character.getDescription(),
                character.getCharClass(), character.getStrength(), character.getDexterity(), character.getConstitution(),
                character.getIntelligence(), character.getWisdom(), character.getCharisma(), character.getMonsterId(),
                character.getUserId()
        );

        character.setId(id);

        return character;
    }


    private Character mapRowToCharacter(SqlRowSet result){
        Character character = new Character();
        character.setId(result.getInt("id"));
        character.setName(result.getString("name"));
        character.setRace(result.getString("race"));
        character.setDescription(result.getString("description"));
        character.setCharClass(result.getString("char_class"));
        character.setStrength(result.getInt("strength"));
        character.setDexterity(result.getInt("dexterity"));
        character.setConstitution(result.getInt("constitution"));
        character.setIntelligence(result.getInt("intelligence"));
        character.setWisdom(result.getInt("wisdom"));
        character.setCharisma(result.getInt("charisma"));
        character.setMonsterId(result.getInt("monster_id"));
        character.setUserId(result.getInt("user_id"));
        return character;

    }





}
