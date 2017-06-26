SELECT t1.pk_r as identificativo_rteticolo, count(*)as conteggio
from
(
SELECT p.*,r.pk_r
FROM punti p, reticolo r
WHERE ST_intersects (p.geom, r.geom)
) as t1
group by t1.pk_r
