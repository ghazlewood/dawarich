# frozen_string_literal: true

FactoryBot.define do
  factory :point do
    battery_status { 1 }
    ping { 'MyString' }
    battery { 1 }
    topic { 'MyString' }
    altitude { 1 }
    longitude { 'MyString' }
    velocity { 'MyString' }
    trigger { 1 }
    bssid { 'MyString' }
    ssid { 'MyString' }
    connection { 1 }
    vertical_accuracy { 1 }
    accuracy { 1 }
    timestamp { 1 }
    latitude { 'MyString' }
    mode { 1 }
    inrids { 'MyString' }
    in_regions { 'MyString' }
    raw_data { '' }
    tracker_id { 'MyString' }
    import_id { '' }
    city { nil }
    country { nil }
    user

    trait :with_geodata do
      geodata do
        {
          'type' => 'Feature',
          'geometry' => { 'type' => 'Point', 'coordinates' => [37.6177036, 55.755847] },
          'properties' => {
            'city' => 'Moscow',
            'name' => 'Kilometre zero',
            'type' => 'house',
            'state' => 'Moscow',
            'osm_id' => 583_204_619,
            'street' => 'Манежная площадь',
            'country' => 'Russia',
            'osm_key' => 'tourism',
            'district' => 'Tverskoy',
            'osm_type' => 'N',
            'postcode' => '103265',
            'osm_value' => 'attraction',
            'countrycode' => 'RU'
          }
        }
      end
    end
  end
end
