
CREATE FUNCTION fnCompanions(
	@EpisodeId int
)
Returns varchar(1000)
AS
BEGIN 
	DECLARE @Companions VARCHAR(1000)
	select @Companions=STRING_AGG(C.CompanianName, ',') from Companion C, EpisodeCompanion EC, Episode E
	where C.CompanionId = EC.CompanionId AND E.EpisodeId = EC.EpisodeId
	AND EC.EpisodeId = @EpisodeId

	return @Companions
end;


CREATE FUNCTION fnEnemies (
	@EpisodeId int
)
Returns varchar(1000)
AS
BEGIN 
	DECLARE @Enemies VARCHAR(1000)
	select @Enemies=STRING_AGG(EN.EnemyName, ',')   from Enemy EN, EpisodeEnemy EE, Episode E
	where EN.EnemyId = EE.EnemyId AND E.EpisodeId = EE.EpisodeId
	AND EE.EpisodeId = @EpisodeId

	return @Enemies
end;

CREATE FUNCTION fnDoctors (
	@EpisodeId int
)
Returns varchar(1000)
AS
BEGIN 
	DECLARE @Doctors VARCHAR(1000)
	select @Doctors=STRING_AGG(D.DoctorName, ',')   from Doctor D, Episode E
	where D.DoctorId= E.DoctorId AND E.EpisodeId = @EpisodeId

	return @Doctors
end;


CREATE FUNCTION fnAuthors (
	@EpisodeId int
)
Returns varchar(1000)
AS
BEGIN 
	DECLARE @Authors VARCHAR(1000)
	select @Authors=STRING_AGG(A.AuthorName, ',')   from Author A, Episode E
	where E.AuthorId = A.AuthorId AND E.EpisodeId = @EpisodeId

	return @Authors
end;

