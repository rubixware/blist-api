companies = [
  {name: 'Ecocarspa', description: 'Somos el carwash del futuro! Creemos en un mejor mañana, en el que lavar autos con sólo 1 vaso de agua sea visto como una acción necesaria.',
  email: 'adminx@example.com', password: 'password', password_confirmation: 'password',
  category_id: 2, auth_token: '1x', remote_image_url: 'http://i.imgur.com/2GBSWk3.png' },
  {name: 'Galt', description: 'Te ofrecemos paneles solares de alta calidad a precios accesibles. Proyectos residenciales, comerciales e industriales en toda la república Mexicana.',
  email: 'adminy@example.com', password: 'password', password_confirmation: 'password',
  category_id: 2, auth_token: '2x', remote_image_url: 'http://i.imgur.com/Zh64ExI.png' },
  {name: 'Lentematic.com', description: 'es una empresa de origen Mexicano, ubicada en Monterrey, N.L. que se dedica a la venta de lentes de contacto por internet. Ofreciendo una alternativa económica a la compra de lentes de contacto en ópticas donde los precios llegan a ser muy elevados. Además, ofrecemos mejores precios que cualquiera de nuestros competidores en línea.',
  email: 'admini@example.com', password: 'password', password_confirmation: 'password',
  category_id: 2, auth_token: '3x', remote_image_url: 'http://i.imgur.com/zfov6yj.png'},
  {name: 'IcaliaLabs', description: 'We’re a product development and design firm focused on Web and Mobile consumer products.',
  email: 'admina@example.com', password: 'password', password_confirmation: 'password',
  category_id: 2, auth_token: '4x', remote_image_url: 'http://i.imgur.com/GY4nwQf.png'},
  {name: 'Colective', description: 'Somos una agencia de diseño, desarrollo y marketing digital.',
  email: 'adminn@example.com', password: 'password', password_confirmation: 'password',
  category_id: 2, auth_token: '5x', remote_image_url: 'http://i.imgur.com/qfLF9Mm.jpg'},
  {name: 'C+', description: 'Diseño de páginas web y campañas publicitarias en Facebook, Google y mucho más',
  email: 'adminm@example.com', password: 'password', password_confirmation: 'password',
  category_id: 1, auth_token: '6x', remote_image_url: 'http://i.imgur.com/VOp2XE0.png' }
]
contacts = [
  {website: 'http://www.ecocarspa.com', email: 'hola@ecocarspa.com',
  facebook: 'https://www.facebook.com/Ecocarspa', twitter: 'https://twitter.com/ecocarspa',
  phone: '52 81 8287 234', company_id: 0},
  {website: 'http://galt.mx/', email: 'info@galt.mx',
  facebook: 'https://www.facebook.com/GaltEnergy/', twitter: 'https://www.twitter.com/GaltEnergy/',
  phone: '(81) 2089 0593', company_id: 0},
  {website: 'http://lentematic.com/', email: 'clientes@lentematic.com',
  facebook: 'https://www.facebook.com/lentematic/info?tab=page_info', twitter: 'https://twitter.com/lentematic',
  phone: '01-800-099-0804', company_id: 0},
  {website: 'http://www.icalialabs.com/', email: '',
  facebook: 'https://www.facebook.com/icalialabs?ref=ts&fref=ts', twitter: 'https://twitter.com/icalialabs',
  phone: '01 (81) 2089 8857', company_id: 0},
  {website: 'https://colectivolabs.com', email: 'monterrey@colectivolabs.com',
  facebook: 'https://www.facebook.com/colectivolabs', twitter: 'https://twitter.com/colectivolabs',
  phone: ' 01 (81) 1061-3464', company_id: 0},
  {website: 'http://www.cpositivo.com/', email: 'hola@cpositivo.com',
  facebook: 'https://www.facebook.com/cpositivo', twitter: 'https://twitter.com/DanielaTapp',
  phone: '01 81 8311 0923', company_id: 0}
]
adds = [
  {street: 'Av. Fundadores #104', suburb: 'Privanzas Fundadores',
  city: 'San Pedro Garza García', region: 'N.L.', company_id: 0,
  latitude: 25.6403378, longitude: -100.3235174},
  {street: 'Av. Lomas del Valle 430, Local 4-1', suburb: 'Lomas del Valle',
  city: 'San Pedro Garza García', region: 'N.L.', company_id: 0,
  latitude: 25.6518762, longitude: -100.3802992},
  {street: 'Díaz Ordaz 140', suburb: 'Sin Nombre de Col 27',
  city: 'Monterrey', region: 'N.L.', company_id: 0,
  latitude: 25.6722724, longitude: -100.3764045},
  {street: 'Suite 206,J. I. Ramón 801', suburb: 'Centro',
  city: 'Monterrey', region: 'N.L.', company_id: 0,
  latitude: 25.6707081, longitude: -100.310318},
  {street: 'Anastacio Bustamante', suburb: 'Benito Juarez',
  city: 'Monterrey', region: 'N.L.', company_id: 0,
  latitude: 25.6984754, longitude: -100.3327619},
  {street: ' Av. Nuevo México 4600', suburb: 'Morelos',
  city: 'Monterrey', region: 'N.L.', company_id: 0,
  latitude: 25.7236878, longitude: -100.3512924}
]
Company.create(companies).each_with_index do |c,i|
  contact = contacts[i]
  address = adds[i]
  address[:company_id] = c.id
  contact[:company_id] = c.id
  Contact.create(contact)
  Address.create(address)
end
tags = [
  {name: "Tecnologias de la información"},
  {name: "Educación"},
  {name: "Finanzas"},
  {name: "Salud"},
  {name: "Moda"},
  {name: "Belleza"}
  {name: "Limpieza"},
  {name: "Entretenimiento"},
  {name: "Agricultura"}
]
Tag.create(tags)
