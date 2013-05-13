Manipulator::Application.routes.draw do
  root to: 'static#index'
  # match 'info' => 'static#info'
  match 'prices' => 'static#prices'
  match 'faq' => 'static#faq'
  match 'contacts' => 'static#contacts'
  # match 'services' => 'static#services'
  match 'gallery' => 'static#gallery'
  post 'order_form/send_email', as: :send_email

end
