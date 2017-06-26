CREATE VIEW v_punti_reticolo AS
SELECT p.*,r.pk_r
FROM punti p, reticolo r
WHERE ST_intersects (p.geom, r.geom)
