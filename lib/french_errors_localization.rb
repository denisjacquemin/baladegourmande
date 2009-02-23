module ActiveRecord
  class Errors
    @@default_error_messages.update( {
      :inclusion => "n'est pas inclut dans la liste",
      :exclusion => "est réservé",
      :invalid => "est invalide",
      :confirmation => "ne correspond pas à la confirmation",
      :accepted => "doit être accepté",
      :empty => "ne peut pas être vide",
      :blank => "est requis",
      :too_long => "est trop long (%d caractères maximum)",
      :too_short => "est trop court(%d caractères minimum)",
      :wrong_length => "n'est pas de la bonne longueur (devrait être de %d caractères)",
      :taken => "est déjà  prit",
      :not_a_number => "n'est pas un nombre",
    })
  end
end
