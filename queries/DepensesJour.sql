--Req 14 : Dépenses durant la semaine / jour / mois:

select jour_maintenance, sum(cout) as depenses from maintenance inner join requerir
on requerir.id_maintenance = maintenance.id_maintenance
group by jour_maintenance;
