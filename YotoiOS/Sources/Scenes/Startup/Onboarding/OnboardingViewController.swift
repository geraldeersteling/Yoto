//
//  OnboardingViewController.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 07/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import PureLayout
import Resolver
import UIKit
import YotoUIKit

class OnboardingViewController: UIViewController {
    @Injected private var stepContainer: OnboardingStepContainer

    private var pageViewController = UIPageViewController(transitionStyle: .scroll,
                                                          navigationOrientation: .horizontal)
    private var pageIndex = 0

    //    private let slides: [Slide] = {
    //        var slides = [Slide]()
    //        for index in 1...10 {
    //            let slide = BasicTextSlide.loadFromBundle()
    //            slide.set(title: "This is slide \(index)", body: "With a body for slide: \(index)")
    //            slides.append(slide)
    //        }
    //        return slides
    //    }()

//    private let pager = UIScrollView(frame: CGRect.zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        stepContainer.delegate = self
        configureViews()
        configurePageViewController()
    }

    private func configureViews() {
        view.addSubview(pageViewController.view)
        pageViewController.view.configureForAutoLayout()
        pageViewController.view.autoPinEdgesToSuperviewEdges()
//        configurePager()
//        view.addSubview(pager)
    }

//    func configurePager() {
//        pager.frame = view.frame
//        pager.bounces = false
//        pager.isPagingEnabled = true
//        pager.showsHorizontalScrollIndicator = false
//        pager.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
//
//        for i in 0..<slides.count {
//            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0,
//                                     width: view.frame.width, height: view.frame.height)
//            pager.addSubview(slides[i])
//        }
//    }

    private func configurePageViewController() {
        pageViewController.dataSource = self
        pageViewController.delegate = self

        var pages = [UIViewController]()
        if let firstPage = stepContainer.firstStep {
            pages.append(firstPage)
        }
        pageViewController.setViewControllers(pages,
                                              direction: .forward,
                                              animated: true)

        pageViewController.view.subviews
            .compactMap { $0 as? UIScrollView }
            .forEach { $0.isScrollEnabled = false }
    }
}

extension OnboardingViewController: OnboardingStepContainerDelegate {
    func stepForward() {
        guard
            let currentVC = pageViewController.viewControllers?.first,
            let nextVC = pageViewController(pageViewController, viewControllerAfter: currentVC)
        else { return }

        pageViewController.setViewControllers([nextVC], direction: .forward, animated: true)
    }

    func stepBackward() {
        guard
            let currentVC = pageViewController.viewControllers?.first,
            let previousVC = pageViewController(pageViewController, viewControllerBefore: currentVC)
        else { return }

        pageViewController.setViewControllers([previousVC], direction: .reverse, animated: true)
    }
}

extension OnboardingViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        stepContainer.step(before: viewController)
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        stepContainer.step(after: viewController)
    }

    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        stepContainer.numberOfSteps
    }
}

extension OnboardingViewController: UIPageViewControllerDelegate {}
