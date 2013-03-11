ActiveAdmin.register Course do

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :name
      f.input :short_summary
      f.input :description
      f.input :organisation
      f.input :logo, :as => :file, :hint => f.template.image_tag(f.object.logo.url(:thumb))
      f.input :start_date
      f.input :end_date
      f.input :published
    end
    f.buttons
  end

end