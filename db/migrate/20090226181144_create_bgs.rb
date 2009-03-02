class CreateBgs < ActiveRecord::Migration
  def self.up
    create_table :bgs do |t|
      t.boolean :reservations_open
      t.text :reservations_not_open_text
      t.text :reservations_closed_text
      t.text :step2
      t.text :step3

      t.timestamps
    end
    
    Bg.create(:reservations_open => false, 
              :reservations_not_open_text => 'Reservations pas encore ouvert',
              :reservations_closed_text => 'Reservations fermees',
              :step2 => "Voici un recapitulatif des donnes entree, veuillez valider votre inscriptions en cliquant sur 'confirmer' ou corriger les erreurs en appuyant sur 'modifier'.",
              :step3 => 'Merci a bientot' )
  end

  def self.down
    drop_table :bgs
  end
end
