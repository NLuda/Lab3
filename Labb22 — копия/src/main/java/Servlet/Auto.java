package Servlet;


import lombok.Getter;
public class Auto {
    @Getter private String name;        //Название игры
    @Getter private String body;       //Жанр
    @Getter private String transmission;    //Платформа
    @Getter private String engine;
    @Getter private float year;         //Год
           //Цена

    public Auto(String name, String body, String transmission, String engine, float year) {
        this.name = name;
        this.body = body;
        this.transmission = transmission;
        this.engine = engine;
        this.year = year;

    }
    @Override
    public boolean equals(Object obj) {
        if(this==obj) return true;
        if(obj==null || getClass()!=obj.getClass()) return false;
        Auto auto = (Auto) obj;
        if(!name.equals(auto.name)) return false;
        if(!body.equals(auto.body)) return false;
        if(!transmission.equals(auto.transmission)) return false;
        if(engine != auto.engine) return false;
        return year == auto.year;

    }
    @Override
    public int hashCode() {
        int result = (int) ((int)year ^ ((int)year >>> 32));
        result = 31 * result + name.hashCode();
        result = 31 * result + body.hashCode();
        result = 31 * result + transmission.hashCode();
        result = 31 * result + engine.hashCode();
        return result;
    }
}