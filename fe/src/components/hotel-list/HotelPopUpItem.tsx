import styled from "styled-components";

type HotelPopUpItemProps = {
  title: string;
  subtitle: string;
};

const HotelPopUpItem = ({ title, subtitle }: HotelPopUpItemProps) => {
  return (
    <StyledHotelPopUpItem>
      <InputTitle>{title}</InputTitle>
      <InputSubtitle>{subtitle}</InputSubtitle>
    </StyledHotelPopUpItem>
  );
};

export default HotelPopUpItem;
const StyledHotelPopUpItem = styled.div`
  display: flex;
  flex-direction: column;
  padding: 1rem 1.5rem;
`;
const InputSubtitle = styled.span`
  font-weight: 400;
  font-size: 1.1rem;
  color: ${({ theme }) => theme.color.Gray3};
  text-overflow: ellipsis;
  white-space: nowrap;
  word-wrap: normal;
  overflow: hidden;
`;

const InputTitle = styled.span`
  font-weight: 700;
  font-size: 1.1rem;
  margin-bottom: 0.3rem;
`;
