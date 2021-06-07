export type image = {
  image_id: number;
  accomodation_id: number;
  image_url: string;
};

export interface roomType {
  accomodation_id: number;
  accomodation_name: string;
  area: string;
  average_point: number;
  bath_room_count: number;
  bed_count: number;
  bed_room_count: number;
  image_url: image[];
  latitude: number;
  longitude: number;
  max_member_capacity: number;
  options: string[];
  price_per_day: number;
  residential_type: string;
  review_count: number;
  total_price: number;
}
