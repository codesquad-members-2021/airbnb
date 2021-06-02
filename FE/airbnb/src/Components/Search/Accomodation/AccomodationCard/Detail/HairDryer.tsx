interface Props {
  isHairDryer: boolean;
}

const HairDryer = ({ isHairDryer }: Props) => {
  return isHairDryer ? <span>헤어드라이어 • </span> : null;
};

export default HairDryer;
