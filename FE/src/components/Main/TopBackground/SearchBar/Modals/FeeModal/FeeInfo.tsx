import { useEffect, useState } from 'react';
import styled from 'styled-components';
import { IFeeGraph } from '.';
import { threeDigitsComma } from '../../../../../../util/util';

const FeeInfo = ({ resData: {data, start, end}, ...props } : IFeeGraph) => {
  const [avg, setAvg] = useState("");
  useEffect(() => {
    if (data.length <= 0) return;
    const calcAvg = data.reduce((result, curr) => (result += curr, result), 0) / data.length;
    setAvg(threeDigitsComma(calcAvg));
  }, [data]);

  return (
    <FeeInfoLayout {...props}>
      <p className="price__text">가격 범위</p>
      <p className="price__range">\{threeDigitsComma(start)} ~ \{threeDigitsComma(end)}+</p>
      <p className="price__avg">평균 1박 요금은 \{avg} 입니다</p>
    </FeeInfoLayout>
  );
};

export default FeeInfo;

// --- Styled Components ---
const FeeInfoLayout = styled.div`
  display: flex;
  flex-direction: column;
  p {
    padding: 0;
    margin: 0;
  }
  p + p {
    margin-top: 8px;
  }

  p.price__text {
    font-weight: ${({ theme }) => theme.fontWeight.bold};
    font-size: ${({ theme }) => theme.fontSize.L};
    color: ${({ theme }) => theme.colors.black1};
  }

  p.price__range {
    font-size: ${({ theme }) => theme.fontSize.XL};
    color: ${({ theme }) => theme.colors.gray1};
  }

  p.price__avg {
    font-size: ${({ theme }) => theme.fontSize.S};
    color: ${({ theme }) => theme.colors.gray3};
  }
`;
