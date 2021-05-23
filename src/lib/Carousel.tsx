import {} from "react";
import styled from "styled-components";

type CarouselProps = {
  children: React.ReactNode;
};
export default function Carousel({ children }: CarouselProps) {
  return <CarouselWarpper>{children}</CarouselWarpper>;
}

const CarouselWarpper = styled.div``;
