CREATE TABLE UserCertificates (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(255),
    RollNo NVARCHAR(50),
    Class NVARCHAR(2),
    CertificateLink NVARCHAR(255),
    OrgName NVARCHAR(255),
    Course NVARCHAR(10),
    StartDate DATE,
    EndDate DATE,
    CertificateFile VARBINARY(MAX)
);
