import styled from "styled-components";
import { MouseEvent } from "react";
import { useRecoilState, useRecoilValue } from "recoil";

import { isHotelPage, SearchBarHoverData } from "atoms/searchbarAtom";
type InputItemProps = {
  w: String;
  title: string;
  subtitle: String;
  onClick: (event: MouseEvent | Event) => void;
};
const InputItem = ({ w, title, subtitle, onClick }: InputItemProps) => {
  const [HoverData, setHoverData] = useRecoilState(SearchBarHoverData);
  const getDeepCopy = (original: any) => JSON.parse(JSON.stringify(original));
  const handleClick = (event: MouseEvent | Event) => {
    onClick(event);
    setHoverData((data) => {
      const deepCopy = getDeepCopy(data);
      deepCopy[title] = true;
      return deepCopy;
    });
  };
  const isHotelList = useRecoilValue(isHotelPage);

  return (
    <FlexBox {...{ w }} onClick={handleClick} aria-checked={HoverData[title]}>
      {isHotelList ? null : <InputTitle>{title}</InputTitle>}
      <InputSubtitle aria-disabled={subtitle === "날짜입력"}>
        {subtitle}
      </InputSubtitle>
    </FlexBox>
  );
};

export default InputItem;

const InputTitle = styled.div`
  font-weight: 700;
  font-size: 1rem;
  margin-bottom: 0.3rem;
`;

const InputSubtitle = styled.div`
  font-weight: 400;
  font-size: 1rem;
  color: ${({ theme }) => theme.color.Gray3};
  text-overflow: ellipsis;
  white-space: nowrap;
  word-wrap: normal;
  overflow: hidden;
  &[aria-disabled="false"] {
    color: ${({ theme }) => theme.color.Black};
  }
`;

const FlexBox = styled.div<{ w: String }>`
  width: ${(props) => `${props.w}`};
  display: flex;
  padding-left: 1rem;
  flex-direction: column;
  border-radius: 1rem;

  &:hover {
    box-shadow: 0px 16px 32px rgba(0, 0, 0, 0.15),
      0px 3px 8px rgba(0, 0, 0, 0.1);
    cursor: pointer;
  }
  &[aria-checked="true"] {
    box-shadow: 0px 16px 32px rgba(0, 0, 0, 0.15),
      0px 3px 8px rgba(0, 0, 0, 0.1);
  }
`;
