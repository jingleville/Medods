# == Schema Information
#
# Table name: symptoms
#
#  id                              :bigint           not null, primary key
#  ALT                             :decimal(, )
#  AST                             :decimal(, )
#  Age                             :integer
#  Albuminlevel                    :decimal(, )
#  Albuminuria                     :decimal(, )
#  AldoRenin                       :decimal(, )
#  Aldosterone                     :decimal(, )
#  AlkalinePhosphatase             :decimal(, )
#  Amylase                         :decimal(, )
#  AnionGap                        :integer
#  B12                             :decimal(, )
#  BMI                             :decimal(, )
#  BNP                             :decimal(, )
#  BaselineeGFR                    :decimal(, )
#  Bicarb                          :decimal(, )
#  CRPlevel                        :decimal(, )
#  Calcium                         :decimal(, )
#  CholesterolLevel                :decimal(, )
#  DBP                             :integer
#  DDimer                          :decimal(, )
#  DropInHGBlevelWithinLast24Hours :decimal(, )
#  ESRlevel                        :integer
#  FEV1toFVCRatio                  :decimal(, )
#  FastingGlucose                  :decimal(, )
#  FerritinLab                     :decimal(, )
#  Fio2                            :integer
#  FolateLab                       :decimal(, )
#  HGBlevel                        :decimal(, )
#  HaptoglobinLab                  :decimal(, )
#  Hba1c                           :decimal(, )
#  HeartRate                       :integer
#  INR                             :decimal(, )
#  LDH                             :decimal(, )
#  LacticAcid                      :decimal(, )
#  Lipase                          :decimal(, )
#  LymphocyteLevel                 :decimal(, )
#  MCVlevel                        :decimal(, )
#  O2Sats                          :integer
#  PCT                             :decimal(, )
#  PSA                             :decimal(, )
#  PlateletsLevel                  :decimal(, )
#  Potassium                       :decimal(, )
#  Proteinuria                     :decimal(, )
#  RR                              :integer
#  RandomBloodGlucose              :decimal(, )
#  SBP                             :integer
#  SerumCK                         :decimal(, )
#  SerumCreatinine                 :decimal(, )
#  SerumCreatinineAtBaseline       :decimal(, )
#  SerumbHCG                       :decimal(, )
#  TSAT                            :decimal(, )
#  TSHFeature                      :decimal(, )
#  Temp                            :decimal(, )
#  TotalBilirubin                  :decimal(, )
#  TriglyceridesLevel              :decimal(, )
#  TroponinI                       :decimal(, )
#  TwoHrPlasmaGlucoseDuringOGTT    :decimal(, )
#  UricAcidLevel                   :decimal(, )
#  WBClevel                        :integer
#  pCO2onABG                       :decimal(, )
#  pHofVaginalDc                   :decimal(, )
#  pHonABG                         :decimal(, )
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  consultation_request_id         :bigint           not null
#
# Indexes
#
#  index_symptoms_on_consultation_request_id  (consultation_request_id)
#
# Foreign Keys
#
#  fk_rails_...  (consultation_request_id => consultation_requests.id)
#
class Symptom < ApplicationRecord
	belongs_to :patient
end
