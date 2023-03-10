create table if not exists MusicGenres (
	MusGen_ID SERIAL primary key, 
	Genres_name VARCHAR(40) not null unique
);

create table if not exists Musicians (
	Musicians_ID SERIAL primary key,
	Musician_name Varchar(80) not null unique 
);

create table if not exists MusicGenresAndMusic (
	MGAM_ID SERIAL primary key,
	MusGen_ID SERIAL foreign key references MusicGenres(MusGen_ID),
	Musicians_ID SERIAL foreign key references Musicians(Musicians_ID)
);

create table if not exists Albums (
	Albums_ID SERIAL primary key,
	Album_name Varchar(80) not null,
	Album_date date
);

create if not exists MusiciansAndAlbums (
	MAA_ID SERIAL primary key,
	Musicians_ID SERIAL foreign key references Musicians(Musicians_ID),
	Albums_ID SERIAL foreign key references Albums(Albums_ID)
);

create if not exists Tracks(
	Track_ID SERIAL primary key,
	Track_name VARCHAR(80),
	Track_duration text,
	Albums_ID SERIAL foreign key references Albums(Albums_ID) 	
);

create if not exists Compilation (
	Compilation_ID SERIAL primary key,
	Comp_name Varchar(80),
	Comp_date date,
	Track_ID SERIAL foreign key references Tracks(Track_ID)
);


