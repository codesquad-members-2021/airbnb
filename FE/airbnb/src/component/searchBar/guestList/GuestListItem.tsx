import styled from "styled-components";
import { useRecoilState } from "recoil";
import { ReactComponent as MinusCircle } from "assets/minus_circle.svg";
import { ReactComponent as PlusCircle } from "assets/plus_circle.svg";

interface Props {
  ageInfo: {
    title: string;
    desc: string;
    state: any;
  };
}

function GuestListItem({ ageInfo }: Props) {
  const [guestNumber, setGuestNumber] = useRecoilState<number>(ageInfo.state);
  const handleClickMinus = () => {
    if (guestNumber > 0) setGuestNumber((num) => num - 1);
  };
  const handleClickPlus = () => setGuestNumber((num) => num + 1);
  const isDisabled = guestNumber === 0;
  return (
    <GuestItem>
      <AgeBox>
        <AgeCategory>{ageInfo.title}</AgeCategory>
        <AgeDescription>{ageInfo.desc}</AgeDescription>
      </AgeBox>
      <ControlBox>
        <MinusCircle className={isDisabled ? "circleBtn disabled" : "circleBtn"} onClick={handleClickMinus} />
        <GuestNumber>{guestNumber}</GuestNumber>
        <PlusCircle className="circleBtn" onClick={handleClickPlus} />
      </ControlBox>
    </GuestItem>
  );
}

export default GuestListItem;

const GuestItem = styled.li`
  padding: 25px 0;
  display: flex;
  justify-content: space-between;
  align-items: center;
  &:not(:last-child) {
    border-bottom: 1px solid ${({ theme }) => theme.color.gray5};
  }
`;
const AgeBox = styled.div``;
const AgeCategory = styled.div`
  font-weight: bold;
  margin-bottom: 5px;
`;
const AgeDescription = styled.div`
  font-size: 14px;
  color: ${({ theme }) => theme.color.gray3};
`;
const ControlBox = styled.div`
  width: 110px;
  display: flex;
  justify-content: space-between;
  .circleBtn {
    width: 30px;
    height: 30px;
    cursor: pointer;
    path {
      stroke: ${({ theme }) => theme.color.gray3};
    }
  }
  .disabled {
    cursor: default;
    path {
      stroke: ${({ theme }) => theme.color.gray5};
    }
  }
`;
const GuestNumber = styled.div`
  width: 30px;
  height: 30px;
  text-align: center;
  line-height: 30px;
  font-size: 20px;
  color: ${({ theme }) => theme.color.gray1};
`;
