DROP PROCEDURE IF EXISTS spSummariseEpisodes;
GO
CREATE PROCEDURE spSummariseEpisodes
-- procedure returns all rows from the customer table
AS BEGIN
  
Select top(3)  EC.CompanionId,COUNT(EC.CompanionId) as number from Companion C, EpisodeCompanion EC
where C.CompanionId = EC.CompanionId
Group by EC.CompanionId


Select top(3)  EE.EnemyId,Count(E.EnemyId) as number from Enemy E, EpisodeEnemy EE
where E.EnemyId = EE.EnemyId
Group by EE.EnemyId
END;