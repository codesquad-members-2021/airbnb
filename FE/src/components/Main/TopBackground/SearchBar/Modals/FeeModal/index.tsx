import { useEffect, useState } from 'react';
import styled from 'styled-components';
import Modal from '../../../../../Common/Modal';
import FeeGraphSlider from './FeeGraphSlider';
import FeeInfo from './FeeInfo';

export type FeeDataType = {
  start?: number, // 시작
  end?: number,   // 끝
  unit?: number, // 단위
  data?: number[],
}

export interface IFeeGraph {
  feeData: FeeDataType
}

const FeeModal = ({ data, ...props } : FeeDataType) => {
  const [feeData, setFeeData] = useState<FeeDataType>();
  useEffect(() => {
    if (!data || data.length <= 0) return;
    const resFeeData : FeeDataType = { 
      start: Math.min(...data),
      end: Math.max(...data),
      unit: 1000,
      data,
    }
    setFeeData(resFeeData);
  }, [data]);

  return feeData ? (
    <FeeModalLayout {...props}>
      <FeeModalRow>
        <FeeInfo feeData={feeData} />
      </FeeModalRow>
      <FeeModalRow>
        <FeeGraphSlider feeData={feeData} />
      </FeeModalRow>
    </FeeModalLayout>
  ) : <>FeeData is Null</>;
};

export default FeeModal;

// --- Styled Components ---
const FeeModalLayout = styled(Modal)`
  position: absolute;
  right: 0;
  width: 50%;
  background-color: ${({ theme }) => theme.colors.white};
  padding: 48px;
  border-radius: 40px;

  flex-direction: column;
`;

const FeeModalRow = styled.div`
  & + & {
    margin-top: 8px;
  }
  width: 100%;
`;
