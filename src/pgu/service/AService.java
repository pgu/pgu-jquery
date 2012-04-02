package pgu.service;

import java.util.ArrayList;
import java.util.List;

import pgu.domain.Person;

public class AService {

    public List<Person> getPersons() {
        final List<Person> persons = new ArrayList<Person>();
        persons.add(new Person().id("100").name("Jane"));
        persons.add(new Person().id("101").name("Luck"));
        persons.add(new Person().id("102").name("Peter"));
        return persons;
    }

}
