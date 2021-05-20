import styled from "styled-components";

type InputItemProps = { w: String; title: String; subtitle: String };



const InputItem = ({ w, title, subtitle }: InputItemProps) => {
  return (
    <FlexBox {...{ w }}>
      <InputTitle>{title}</InputTitle>
      <InputSubtitle>{subtitle}</InputSubtitle>
    </FlexBox>
  );
};

export default InputItem;

const InputTitle = styled.div`
  font-weight: 700;
  font-size: 0.8rem;
  margin-bottom: 0.6rem;
`;
const InputSubtitle = styled.div`
  font-weight: 400;
  font-size: 1rem;
  color: gray;
`;

const FlexBox = styled.div<{ w: String }>`
  width: ${(props) => `${props.w}`};
  display: flex;
  padding-left: 1rem;
  flex-direction: column;
  border-radius: 1rem;
  
  &:hover{
    box-shadow: 0px 16px 32px rgba(0, 0, 0, 0.15), 0px 3px 8px rgba(0, 0, 0, 0.1);
    cursor: pointer;
  }
`;