CREATE TABLE pokemans.pokeman (
    id SERIAL PRIMARY KEY,
    name text not null,
    type text[] not null,
    hp text not null,
    attack int,
    defense int,
    sp_attack int,
    sp_defense int,
    speed int
);