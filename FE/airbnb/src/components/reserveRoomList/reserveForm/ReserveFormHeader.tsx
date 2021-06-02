import styled from 'styled-components';

interface Props {
  className?: string;
  chargePerNight: number;
  review: number;
}

const ReserveFormHeader = ({ className, chargePerNight, review }: Props) => {
  return (
    <StyledReserveFormHeader className={className}>
      <div>
        <span className='price'>￦{chargePerNight.toLocaleString()}</span>
        <span> / 박</span>
      </div>
      <div>
        <span className='review'>후기 {review}개</span>
      </div>
    </StyledReserveFormHeader>
  );
};

export default ReserveFormHeader;

const StyledReserveFormHeader = styled.div`
  display: flex;
  align-items: flex-end;
  justify-content: space-between;

  .price {
    font-size: ${({ theme }) => theme.fontSize.large};
    font-weight: bold;
  }
  .review {
    font-size: ${({ theme }) => theme.fontSize.small};
    color: ${({ theme }) => theme.colors.gray3};
    text-decoration: underline;
  }
`;
