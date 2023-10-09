# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_08_150401) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consultation_requests", force: :cascade do |t|
    t.text "request_body"
    t.bigint "patient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_consultation_requests_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "full_name"
    t.datetime "birth_date"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "session_id"
  end

  create_table "recomendations", force: :cascade do |t|
    t.text "recomendation_body"
    t.bigint "consultation_request_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consultation_request_id"], name: "index_recomendations_on_consultation_request_id"
  end

  create_table "symptoms", force: :cascade do |t|
    t.integer "Age"
    t.decimal "BMI"
    t.decimal "Temp"
    t.integer "HeartRate"
    t.integer "SBP"
    t.integer "DBP"
    t.integer "RR"
    t.integer "O2Sats"
    t.integer "Fio2"
    t.decimal "HGBlevel"
    t.decimal "DropInHGBlevelWithinLast24Hours"
    t.decimal "MCVlevel"
    t.integer "WBClevel"
    t.decimal "LymphocyteLevel"
    t.decimal "SerumCreatinine"
    t.decimal "SerumCreatinineAtBaseline"
    t.decimal "BaselineeGFR"
    t.decimal "PlateletsLevel"
    t.decimal "INR"
    t.decimal "TSAT"
    t.decimal "FerritinLab"
    t.decimal "FolateLab"
    t.decimal "B12"
    t.decimal "Albuminlevel"
    t.decimal "CRPlevel"
    t.integer "ESRlevel"
    t.decimal "AldoRenin"
    t.decimal "TSHFeature"
    t.decimal "Aldosterone"
    t.decimal "Potassium"
    t.decimal "DDimer"
    t.decimal "TroponinI"
    t.decimal "PCT"
    t.decimal "LDH"
    t.decimal "HaptoglobinLab"
    t.decimal "UricAcidLevel"
    t.decimal "AST"
    t.decimal "ALT"
    t.decimal "Amylase"
    t.decimal "Lipase"
    t.decimal "TotalBilirubin"
    t.decimal "AlkalinePhosphatase"
    t.decimal "SerumCK"
    t.decimal "BNP"
    t.decimal "PSA"
    t.decimal "Bicarb"
    t.decimal "Calcium"
    t.decimal "TriglyceridesLevel"
    t.decimal "CholesterolLevel"
    t.decimal "LacticAcid"
    t.integer "AnionGap"
    t.decimal "Hba1c"
    t.decimal "FastingGlucose"
    t.decimal "TwoHrPlasmaGlucoseDuringOGTT"
    t.decimal "RandomBloodGlucose"
    t.decimal "Proteinuria"
    t.decimal "Albuminuria"
    t.decimal "SerumbHCG"
    t.decimal "pCO2onABG"
    t.decimal "pHonABG"
    t.decimal "pHofVaginalDc"
    t.decimal "FEV1toFVCRatio"
    t.bigint "consultation_request_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consultation_request_id"], name: "index_symptoms_on_consultation_request_id"
  end

  add_foreign_key "consultation_requests", "patients"
  add_foreign_key "recomendations", "consultation_requests"
  add_foreign_key "symptoms", "consultation_requests"
end
