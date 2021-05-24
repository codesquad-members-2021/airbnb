import Title from "./Title";
import List from "./List";
import { Footer as S } from "@/Components/Main/MainStyles";

interface Props {
  card: any;
}

const FooterCard = ({ card }: Props) => {
  return (
    <S.FooterCard>
      <Title title={card.title} />
      {card.lists.map((list: string) => (
        <List key={list} list={list} />
      ))}
    </S.FooterCard>
  );
};

export default FooterCard;
