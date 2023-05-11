-- CreateTable
CREATE TABLE "user_group_post" (
    "id" TEXT NOT NULL,
    "contex" VARCHAR(255) NOT NULL,
    "created_at" DATE NOT NULL,
    "updated_at" DATE,
    "group_id" TEXT,

    CONSTRAINT "user_group_post_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "user_group" (
    "id" TEXT NOT NULL,
    "group_name" VARCHAR(255) NOT NULL,

    CONSTRAINT "user_group_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "user_message" (
    "id" TEXT NOT NULL,
    "created_at" DATE NOT NULL,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "is_deliverd" BOOLEAN NOT NULL,
    "is_open" BOOLEAN NOT NULL,
    "is_sent" BOOLEAN NOT NULL,
    "message" VARCHAR(255) NOT NULL,
    "receiver_user_id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,

    CONSTRAINT "user_message_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "photo" (
    "id" TEXT NOT NULL,
    "created_at" DATE NOT NULL,
    "url" VARCHAR(255) NOT NULL,
    "user_id" TEXT NOT NULL,

    CONSTRAINT "photo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "post" (
    "id" TEXT NOT NULL,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "created_at" DATE NOT NULL,
    "contex" VARCHAR(255) NOT NULL,
    "photo_id" TEXT,
    "user_id" TEXT,

    CONSTRAINT "post_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "user" (
    "id" TEXT NOT NULL,
    "created_at" DATE NOT NULL,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "age" VARCHAR(255) NOT NULL,
    "bio" VARCHAR(255),
    "first_name" VARCHAR(255) NOT NULL,
    "is_active" BOOLEAN NOT NULL,
    "is_admin" BOOLEAN NOT NULL,
    "is_deleted" BOOLEAN NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "password" VARCHAR(255) NOT NULL,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "friend_list_member" (
    "user_friend_list_id" TEXT NOT NULL,
    "member_id" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "group_members" (
    "group_id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "user_friend_list" (
    "id" TEXT NOT NULL,
    "owner_id" TEXT NOT NULL,

    CONSTRAINT "user_friend_list_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "user_group_post_group_id_idx" ON "user_group_post"("group_id");

-- CreateIndex
CREATE INDEX "user_message_user_id_idx" ON "user_message"("user_id");

-- CreateIndex
CREATE INDEX "photo_user_id_idx" ON "photo"("user_id");

-- CreateIndex
CREATE INDEX "post_user_id_idx" ON "post"("user_id");

-- CreateIndex
CREATE INDEX "post_photo_id_idx" ON "post"("photo_id");
