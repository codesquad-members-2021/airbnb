interface Props {
  isAirConditioner: boolean;
}

const AirConditioner = ({ isAirConditioner }: Props) => {
  return isAirConditioner ? <span>에어컨 • </span> : null;
};

export default AirConditioner;
