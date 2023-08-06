-- CreateTable
CREATE TABLE "Ruleset" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "name" TEXT NOT NULL,
    "slug" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "tipRule" TEXT NOT NULL,
    "matchRule" TEXT NOT NULL,
    "roundRule" TEXT NOT NULL,
    "withExtraQuestions" BOOLEAN NOT NULL
);

-- CreateTable
CREATE TABLE "Championship" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "rulesId" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "nr" INTEGER NOT NULL,
    "published" BOOLEAN NOT NULL,
    "completed" BOOLEAN NOT NULL,
    CONSTRAINT "Championship_rulesId_fkey" FOREIGN KEY ("rulesId") REFERENCES "Ruleset" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
