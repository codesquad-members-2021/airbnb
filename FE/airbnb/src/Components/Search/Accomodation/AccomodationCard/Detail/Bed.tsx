interface Props {
  bedCount: number;
}

const Bed = ({ bedCount }: Props) => {
  return bedCount !== 0 ? <span>침대 {bedCount}개 • </span> : null;
};

export default Bed;
