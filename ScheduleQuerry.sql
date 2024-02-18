CREATE TABLE Schedule (
    ScheduleID INT PRIMARY KEY,
    DayOfWeek NVARCHAR(50) NOT NULL,
    TimeSlot NVARCHAR(50) NOT NULL,
    SubjectID INT,
    TeacherID INT,
    RoomID INT,
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID),
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);