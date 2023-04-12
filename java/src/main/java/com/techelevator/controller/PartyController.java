package com.techelevator.controller;

import com.techelevator.dao.PartyDao;
import com.techelevator.model.Party;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.time.LocalDate;



@CrossOrigin
@RestController
@PreAuthorize("isAuthenticated()")
public class PartyController {

    @Autowired
    private PartyDao partyDao;


//TODO FIX IF STATEMENT


    @ResponseStatus(HttpStatus.CREATED)
    @RequestMapping(path = "/party/", method = RequestMethod.POST)
    public Party createParty(@Valid @RequestBody Party party, Principal user){
        if(user == null) {
            return partyDao.createParty(party, user.getName());
        }
        return partyDao.createParty(party, user.getName());
    }


    @RequestMapping(path = "/party/{id}", method = RequestMethod.GET)
    public Party getPartyById(@PathVariable int id){
        return partyDao.retrievePartyById(id);

    }

    @RequestMapping(path = "/party", method = RequestMethod.GET)
    public Party getPartyById(@RequestParam String username,
                              @RequestParam(value = "date", required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate date){
        if(date == null) {
            date = LocalDate.now();
        }

        return partyDao.retrievePartyByUsername(username, date);

    }


}
