Use DoctorWho;
 
UPDATE Episode
SET Title = Concat(Episode.Title,'_Cancelled')
WHERE  Episode.DoctorId is null;



DELETE FROM Companion WHERE CompanionId not in (Select CompanionId From EpisodeCompanion) ;

