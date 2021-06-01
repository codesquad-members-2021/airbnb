import { useCallback } from 'react';
import styled from 'styled-components';
import { useRecoilState } from 'recoil';
import PersonnelKind from './PersonnelKind';
import { PersonnelType } from '@Components/commons/baseType';
import { personnelAtom } from '@/recoil/atoms';

export type handleCountType = {
  count: number;
  kind: string;
}

const PersonnelModal = ({ personnel }: PersonnelType) => {
  const [personnelState, setPersonnelState] = useRecoilState(personnelAtom);
  const { adult, child, baby } = personnelState;

  const handleClickUpDownCount = useCallback(({ count, kind }: handleCountType) => () => {
    setPersonnelState((personnel) => {
      const checkYoung = kind === 'child' || kind === 'baby';
      const checkParents = personnel.adult === 0;
      const result = { ...personnel, [kind]: personnel[kind] + count };
      return (checkYoung && checkParents && count === 1) ? { ...result, adult: 1 } : result;
    })
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return (
    <PersonnelModalWrapper {...{ personnel }}>
      <PersonnelKind kind="adult" kindDesc="만 13세 이상" count={adult} {...{ handleClickUpDownCount }} />
      <PersonnelKind kind="child" kindDesc="만 2~12세" count={child} {...{ handleClickUpDownCount }} />
      <PersonnelKind kind="baby" kindDesc="만 2세 미만" count={baby} {...{ handleClickUpDownCount }} />
    </PersonnelModalWrapper>
  );
};

// eslint-disable-next-line no-mixed-operators
const PersonnelModalWrapper = styled.div<PersonnelType>`
  display: ${({ personnel }) => personnel ? 'block' : 'none'};
  width: 40%;
  background: #fff;
  margin-left: auto;
  padding: 3% 4%; 
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 40px;
`;

export default PersonnelModal;
