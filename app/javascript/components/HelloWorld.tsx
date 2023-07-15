import React from "react";

type Props = {
  greeting: string;
  name: string;
};

function HelloWorld({ greeting, name }: Props) {
  return <p>Greeting: {`${greeting} ${name}`}</p>;
}

export default HelloWorld;
