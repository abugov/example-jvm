package org.pantsbuild.example.app;

import org.pantsbuild.example.lib.ExampleLib
import org.pantsbuild.example.lib.ExampleLib2

object ExampleApp {
  def main(args: Array[String]): Unit = {
    println(ExampleLib.hello())
  }
}
