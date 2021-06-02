interface Props {
  isKitchen: boolean;
}

const HairDryer = ({ isKitchen }: Props) => {
  return isKitchen ? <span>주방 • </span> : null;
};

export default HairDryer;
