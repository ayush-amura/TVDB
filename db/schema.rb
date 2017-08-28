# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170828085115) do

  create_table "actors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", null: false
    t.integer "age", null: false
    t.integer "rating", null: false
  end

  create_table "actors_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "actor_id"
    t.bigint "user_id"
    t.index ["actor_id"], name: "index_actors_users_on_actor_id"
    t.index ["user_id"], name: "index_actors_users_on_user_id"
  end

  create_table "actors_videos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "actor_id"
    t.bigint "video_id"
    t.index ["actor_id"], name: "index_actors_videos_on_actor_id"
    t.index ["video_id"], name: "index_actors_videos_on_video_id"
  end

  create_table "appearences", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "video_id"
    t.bigint "actor_id"
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_appearences_on_actor_id"
    t.index ["video_id"], name: "index_appearences_on_video_id"
  end

  create_table "casts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "video_id"
    t.bigint "actor_id"
    t.string "on_screen_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_casts_on_actor_id"
    t.index ["video_id"], name: "index_casts_on_video_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", null: false
    t.integer "age", null: false
    t.string "email", null: false
    t.integer "contact_no", null: false
    t.string "type", null: false
  end

  create_table "users_videos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "video_id"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_users_videos_on_user_id"
    t.index ["video_id"], name: "index_users_videos_on_video_id"
  end

  create_table "videos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title", null: false
    t.string "language", null: false
    t.string "genre", null: false
    t.integer "year_release", null: false
    t.integer "rating", null: false
    t.string "type", null: false
  end

  add_foreign_key "actors_users", "actors"
  add_foreign_key "actors_users", "users"
  add_foreign_key "actors_videos", "actors"
  add_foreign_key "actors_videos", "videos"
  add_foreign_key "appearences", "actors"
  add_foreign_key "appearences", "videos"
  add_foreign_key "casts", "actors"
  add_foreign_key "casts", "videos"
  add_foreign_key "users_videos", "users"
  add_foreign_key "users_videos", "videos"
end
