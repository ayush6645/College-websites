﻿ALTER TABLE Timetable
ADD Branch NVARCHAR(255) FOREIGN KEY REFERENCES Teachers(Branch);