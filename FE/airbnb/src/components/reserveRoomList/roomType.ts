export interface roomType {
  id: number;
  name: string;
  photo: string;
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
