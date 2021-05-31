import styled from "styled-components";
import { ChangeEvent, MouseEvent, useState, useRef, useEffect } from "react";
import { useRecoilState } from "recoil";
import { SearchBarHoverData } from "atoms/searchbarAtom";
type InputItemProps = {
  w: String;
  title: string;
  subtitle: String;
  onClick: (event: MouseEvent | Event) => void;
};

const LocationInputItem = ({ w, title, subtitle, onClick }: InputItemProps) => {
  const ref = useRef<HTMLInputElement>(null);
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

  useEffect(() => {
    if (ref.current) {
      const options = {
        componentRestrictions: { country: "KR" },
        fields: ["address_components", "geometry", "icon", "name"],
        strictBounds: false,
        types: ["geocode"],
      };
      const autocomplete = new google.maps.places.Autocomplete(
        ref.current,
        options
      );
      autocomplete.addListener("place_changed", () => {
        const location = autocomplete.getPlace().geometry?.location;
        console.log(location?.lat(), location?.lng());
      });
    }
  }, [ref]);

  return (
    <FlexBox {...{ w }} onClick={handleClick} aria-checked={HoverData[title]}>
      <InputTitle>{title}</InputTitle>

      <InputLocalSubtitle
        type="text"
        placeholder="어디로 가시겠습니까?"
        ref={ref}
      />
    </FlexBox>
  );
};

export default LocationInputItem;

const InputTitle = styled.div`
  font-weight: 700;
  font-size: 1rem;
  margin-bottom: 0.3rem;
`;

const InputLocalSubtitle = styled.input`
  font-weight: 400;
  font-size: 1rem;
  margin-bottom: 0.3rem;
  color: ${({ theme }) => theme.color.Gray3};
  outline: none;
  border: none;
  
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
