create table persistent_logins(
    username VARCHAR(64) not null,
    series VARCHAR(64) primary key,
    token VARCHAR(64) not null,
    last_used TIMESTAMP not null
);

SELECT * FROM persistent_logins;