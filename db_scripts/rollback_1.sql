ALTER TABLE musician RENAME COLUMN musicianName TO singerName;

ALTER TABLE musician RENAME TO singer;

ALTER TABLE singer DROP COLUMN role, DROP COLUMN bandName;

ALTER TABLE album DROP FOREIGN KEY FK_A_NEW_singerName,
ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES singer (singerName);

DROP TABLE band;