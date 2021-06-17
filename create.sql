PRAGMA foreign_keys = ON;

create table publisher(
    id integer primary key,
    name text UNIQUE,
    country text 
);
    
create table books(
    id integer primary key,
    title text UNIQUE,
    publisher integer references publisher(id)
);
    
create table subjects(
    id integer primary key,
    name text UNIQUE
);

create table books_subjects(
    book integer references books(id),
    subject integer references subjects(id)
);




