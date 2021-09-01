
CREATE VIEW viewEpisodes AS(
select  *,
DoctorWho.dbo.fnAuthors(E.EpisodeId) as Authors,
DoctorWho.dbo.fnDoctors(E.EpisodeId) as Doctors,
DoctorWho.dbo.fnEnemies(E.EpisodeId) as Enemies ,
DoctorWho.dbo.fnCompanions(E.EpisodeId) as Companions from Episode E)