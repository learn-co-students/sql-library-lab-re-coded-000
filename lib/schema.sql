create table series (
  id INTEGER PRIMARY KEY,
title text ,
author_id intger,
subgenre_id intger

);
CREATE TABLE subgenres (
  id INTEGER PRIMARY KEY,
    name TEXT

);
CREATE TABLE authors(
  id INTEGER PRIMARY KEY,
    name TEXT

);
CREATE TABLE books (
  id INTEGER PRIMARY KEY,
    title TEXT ,
    year INTEGER,
    series_id INTEGER

);
create table characters (
id INTEGER PRIMARY kEY,
name text ,
motto text ,
species text,
series_id INTEGER,
author_id INTEGER
);
create table character_books (
id INTEGER PRIMARY kEY,

character_id INTEGER,
book_id INTEGER
);