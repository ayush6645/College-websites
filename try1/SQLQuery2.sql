-- Update Tech_ID for teacher members with 4-character alphabetic values
UPDATE TimeTable
SET Tech_ID = CHAR(65 + ABS(CHECKSUM(NEWID())) % 26)
            + CHAR(65 + ABS(CHECKSUM(NEWID())) % 26)
            + CHAR(65 + ABS(CHECKSUM(NEWID())) % 26)
            + CHAR(65 + ABS(CHECKSUM(NEWID())) % 26)
WHERE Member = 'teacher';
