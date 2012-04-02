package pgu.domain;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Person implements Serializable {

    private String id;
    private String name;
    private int    age;

    public Person id(final String id) {
        setId(id);
        return this;
    }

    public Person name(final String name) {
        setName(name);
        return this;
    }

    public Person age(final int age) {
        setAge(age);
        return this;
    }

    public String getId() {
        return id;
    }

    public void setId(final String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(final String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(final int age) {
        this.age = age;
    }

}
