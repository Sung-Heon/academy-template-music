CREATE TABLE "Student" ("id" TEXT PRIMARY KEY, "name" TEXT NOT NULL, "phone" TEXT, "guardianName" TEXT, "guardianPhone" TEXT);
CREATE TABLE "Pass" ("id" TEXT PRIMARY KEY, "studentId" TEXT NOT NULL REFERENCES "Student"("id"), "title" TEXT NOT NULL, "totalSessions" INTEGER NOT NULL);
CREATE TABLE "Lesson" ("id" TEXT PRIMARY KEY, "studentId" TEXT NOT NULL REFERENCES "Student"("id"), "passId" TEXT NOT NULL REFERENCES "Pass"("id"), "date" TEXT NOT NULL, "time" TEXT NOT NULL, "teacher" TEXT NOT NULL, "status" TEXT NOT NULL);
CREATE TABLE "Consultation" ("id" TEXT PRIMARY KEY, "studentId" TEXT NOT NULL REFERENCES "Student"("id"), "date" TEXT NOT NULL, "memo" TEXT NOT NULL);
CREATE TABLE "Notice" ("id" TEXT PRIMARY KEY, "title" TEXT NOT NULL, "date" TEXT NOT NULL, "content" TEXT NOT NULL);
