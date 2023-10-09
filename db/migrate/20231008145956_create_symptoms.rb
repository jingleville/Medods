class CreateSymptoms < ActiveRecord::Migration[7.0]
  def change
    create_table :symptoms do |t|
      t.integer :Age
      t.numeric :BMI
      t.numeric :Temp
      t.integer :HeartRate
      t.integer :SBP
      t.integer :DBP
      t.integer :RR
      t.integer :O2Sats
      t.integer :Fio2
      t.numeric :HGBlevel
      t.numeric :DropInHGBlevelWithinLast24Hours
      t.numeric :MCVlevel
      t.integer :WBClevel
      t.numeric :LymphocyteLevel
      t.numeric :SerumCreatinine
      t.numeric :SerumCreatinineAtBaseline
      t.numeric :BaselineeGFR
      t.numeric :PlateletsLevel
      t.numeric :INR
      t.numeric :TSAT
      t.numeric :FerritinLab
      t.numeric :FolateLab
      t.numeric :B12
      t.numeric :Albuminlevel
      t.numeric :CRPlevel
      t.integer :ESRlevel
      t.numeric :AldoRenin
      t.numeric :TSHFeature
      t.numeric :Aldosterone
      t.numeric :Potassium
      t.numeric :DDimer
      t.numeric :TroponinI
      t.numeric :PCT
      t.numeric :LDH
      t.numeric :HaptoglobinLab
      t.numeric :UricAcidLevel
      t.numeric :AST
      t.numeric :ALT
      t.numeric :Amylase
      t.numeric :Lipase
      t.numeric :TotalBilirubin
      t.numeric :AlkalinePhosphatase
      t.numeric :SerumCK
      t.numeric :BNP
      t.numeric :PSA
      t.numeric :Bicarb
      t.numeric :Calcium
      t.numeric :TriglyceridesLevel
      t.numeric :CholesterolLevel
      t.numeric :LacticAcid
      t.integer :AnionGap
      t.numeric :Hba1c
      t.numeric :FastingGlucose
      t.numeric :TwoHrPlasmaGlucoseDuringOGTT
      t.numeric :RandomBloodGlucose
      t.numeric :Proteinuria
      t.numeric :Albuminuria
      t.numeric :SerumbHCG
      t.numeric :pCO2onABG
      t.numeric :pHonABG
      t.numeric :pHofVaginalDc
      t.numeric :FEV1toFVCRatio


      t.belongs_to :consultation_request, null: false, foreign_key: true
      t.timestamps
    end
  end
end
