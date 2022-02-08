package ru.javawebinar.topjava.dao;

import ru.javawebinar.topjava.model.Meal;

import java.time.LocalDateTime;
import java.util.List;

public interface MealDAO {
    void add(Meal meal);

    void remove(int id);

    void update(LocalDateTime localDateTime, String description, int calories);

    Meal get();

    List<Meal> getAll();
}
