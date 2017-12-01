<h1 align="center"> WellSpring </h1> <br>
<p align="center">
  <a href="https://wellspring-pconde705.herokuapp.com">
    <img alt="WellSpring" title="WellSpring" src="https://res.cloudinary.com/lopopoa2/image/upload/v1512163320/Screen_Shot_2017-12-01_at_1.20.09_PM_rdmyl1.png" >
  </a>
</p>

<p align="center">
  Welcome to WellSpring, a Kickstarter inspired single-page application with a React/Redux frontend and Ruby on Rails backend.
</p>

## Table of Contents

- [Introduction](#introduction)
- [Project Creation](#project-creation)
- [Project Rewards](#project-rewards)
- [Project Show](#project-show)
- [Search](#search)
- [Categories](#categories)
- [Stats](#stats)


## Introduction

In [WellSpring](https://wellspring-pconde705.herokuapp.com) users can sign up for an account, which allows them to create and back any project of their choice. To back a project they can either type in an amount of their choice or they can choose a fixed amount pledge that come with a reward that the project creator has specified.

Features:

* View project feed
* Navigate feed based on the project category
* View project individually
* Monitor the progress of each project as attempts to reach its funding goals
* Create Projects
* Create Rewards for those projects
* Back a project through a reward or amount of your choice
* See live stats of projects that become funded
* Search for any existing project

## Project Creation

<p align="center">
  <img src="https://res.cloudinary.com/lopopoa2/image/upload/v1512164907/Screen_Shot_2017-12-01_at_1.47.43_PM_wcccae.png">
</p>

To create a project simply click on the button in the navbar that will always be available guaranteeing ease of creation. The form itself does not redirect or continue elsewhere. Everything you need to start a project is on one page further emphasizing ease of navigation. The description input field can be made bigger by a simple click-and-drag action.

## Project Rewards

<p align="center">
  <img src="https://res.cloudinary.com/lopopoa2/image/upload/v1512168276/Screen_Shot_2017-12-01_at_2.44.04_PM_ijossg.png">
</p>

Rewards are not necessary to create a project. They are meant to grow a community of passionate followers that would love to see your app come to fruition. The design was similar so as to not scare away users, but with a slightly different color scheme to showcase difference.

## Project Show

<p align="center">
  <img src="https://res.cloudinary.com/lopopoa2/image/upload/v1512166342/Screen_Shot_2017-12-01_at_2.11.32_PM_mzhjnm.png" >
</p>

In the display page, you can read a detailed description the project creator has written about the project, and what kind of rewards he/she has provided for that specific pledge amount. Here you will also discover live stats that chronicles the number of backers this projects has, the number of backers each reward has, and how close the project is to reach its goal.

## Search

<p align="center">
  <img src="https://res.cloudinary.com/lopopoa2/image/upload/v1512168345/Screen_Shot_2017-12-01_at_2.45.15_PM_nxaj06.png" >
</p>

A simple search feature on the navbar provides ease of access and simplicity in use.

## Categories

<p align="center">
  <img src="http://res.cloudinary.com/lopopoa2/image/upload/v1512168440/Screen_Shot_2017-12-01_at_2.46.59_PM_zrjixj.png" >
</p>

The category bar provides an immediate non-browser refreshing filter functionality that displays the projects of the category that you click on.

## Stats

<p align="center">
  <img src="https://res.cloudinary.com/lopopoa2/image/upload/v1512168500/Screen_Shot_2017-12-01_at_2.47.50_PM_cc1qr5.png" >
</p>

Live statistics outline the current date, how many ongoing projects currently exist, how many backers WellSpring has, and how many projects have been successfully funded.
The stats page was the final thing added to the app that took the most time and effort. Not all aspects were challenging, but when it came to calculating the projects that had been funded, it required a triple Full Outer Join written as a SQL query in Active Record.

```ruby
  def total_amount_raised
    first_value = project_backers.where('cash_only != 0').sum(:cash_only)
    second_value = reward_backers.sum(:amount)
    first_value + second_value
  end

  def total_number_of_backers
    user_backers.uniq.count
  end

  def self.all_projects
    Project.all.count
  end

  def self.all_funded_projects
    result = ActiveRecord::Base.connection.execute(<<-SQL)
      SELECT
        projects.id
      FROM
        projects
      FULL OUTER JOIN project_backers AS reward_backers ON reward_backers.project_id = projects.id
      FULL OUTER JOIN rewards ON reward_backers.reward_id = rewards.id
      FULL OUTER JOIN project_backers AS cash_backers ON cash_backers.project_id = projects.id
      GROUP BY
        projects.id
      HAVING
        sum(cash_backers.cash_only + rewards.amount) > projects.goal
    SQL
    result.count
  end
```
