xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8" 
xml.Workbook({
  'xmlns'      => "urn:schemas-microsoft-com:office:spreadsheet", 
  'xmlns:o'    => "urn:schemas-microsoft-com:office:office",
  'xmlns:x'    => "urn:schemas-microsoft-com:office:excel",    
  'xmlns:html' => "http://www.w3.org/TR/REC-html40",
  'xmlns:ss'   => "urn:schemas-microsoft-com:office:spreadsheet" 
  }) do

  xml.Worksheet 'ss:Name' => 'Reservations' do
    xml.Table do

      # Header
      xml.Row do
          xml.Cell { xml.Data 'Groupe', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Nom', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Prenom', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Rue', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Numero', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Code postal', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Localite', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Telephone', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Email', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Horaire', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Adultes', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Enfants', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Commentaires', 'ss:Type' => 'String' }
      end

      # Rows
      for r in @reservations
        xml.Row do
            xml.Cell { xml.Data r.group_name, 'ss:Type' => 'String' }
            xml.Cell { xml.Data r.lastname, 'ss:Type' => 'String' }
            xml.Cell { xml.Data r.firstname, 'ss:Type' => 'String' }
            xml.Cell { xml.Data r.street, 'ss:Type' => 'String' }
            xml.Cell { xml.Data r.number, 'ss:Type' => 'String' }
            xml.Cell { xml.Data r.postal_code, 'ss:Type' => 'String' }
            xml.Cell { xml.Data r.location, 'ss:Type' => 'String' }
            xml.Cell { xml.Data r.telephone, 'ss:Type' => 'String' }
            xml.Cell { xml.Data r.email, 'ss:Type' => 'String' }
            xml.Cell { xml.Data r.schedule.label, 'ss:Type' => 'String' }
            xml.Cell { xml.Data r.nb_adult, 'ss:Type' => 'String' }
            xml.Cell { xml.Data r.nb_child, 'ss:Type' => 'String' }
            xml.Cell { xml.Data r.comment, 'ss:Type' => 'String' }
        end
      end

    end
  end
end