export interface roomType {
  id: number;
  name: string;
  photo: string;
  address: {
    city: string;
    address: string;
    latitude: number;
    longitude: number;
  };
  condition: {
    guests: number;
    bedroomCount: number;
    bedCount: number;
    bathroomCount: number;
  };
  amenities: string;
  chargePerNight: number;
  totalCharge: number;
}
