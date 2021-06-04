interface Props {
  maxPeople: number;
}

const MaxPeople = ({ maxPeople }: Props) => {
  return <span>최대인원 {maxPeople}명 • </span>;
};

export default MaxPeople;
